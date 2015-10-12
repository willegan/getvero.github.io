---
---

$ ->
  hljs.initHighlightingOnLoad()
  # Toggle result page


  clearIncidents = ->
    $('#sp-incidents').innerHTML = ''

  updateIncidents = (incidents) ->
    if $(incidents).length
      for incident in incidents
        li = $('<li class="' + incident.status + '"></li>').html('<strong>' + incident.status + '</strong> ' + incident.name + '. <a target="_blank" href="' + incident.shortlink + '">View details</a>' )
        $('#sp-incidents').append(li)
    else
      clearIncidents()

  setStatus = (status) ->
    p = $('<p></p>').addClass(status.indicator).text(status.description)
    $('#sp-status').append(p)

  updateStatusPageBlock = ->
    sp.incidents
      filter : 'unresolved',
      success: (data) ->
        updateIncidents(data.incidents)
    sp.status
      success: (data) ->
        setStatus(data.status)

  sp = new StatusPage.page({ page : 't4s7kx6qh253' })
  updateStatusPageBlock()

  showResults = ->
    window.scroll 0, 0
    $initialContent.addClass 'algolia__initial-content--hidden'
    $searchContent.addClass 'algolia__search-content--active'
    return

  hideResults = ->
    $initialContent.removeClass 'algolia__initial-content--hidden'
    $searchContent.removeClass 'algolia__search-content--active'
    return

  # Handle typing query

  onQueryChange = (e) ->
    lastQuery = $(e.target).val()
    if lastQuery.length == 0
      hideResults()
      return false
    helper.setQuery(lastQuery).search()
    showResults()

  onResult = (data) ->
    # Avoid race conditions, discard results that do not match the latest query
    if (data.query != lastQuery)
      false
    content = if data.nbHits then renderResults(data) else templateNoResults
    $searchContentResults.html content

  renderResults = (data) ->
    $.map(data.hits, (hit) ->
      hit.css_selector = encodeURI(hit.css_selector)
      hit.full_url = config.baseurl + hit.url
      templateResult.render hit
    ).join ''

  # Scroll page to correct element

  getAnchorSelector = (hash) ->
    anchor = hash.substring(1)
    if !anchor.match(/^algolia:/)
      false
    decodeURI anchor.replace(/^algolia:/, '')

  scrollPageToSelector = (selector) ->
    target = $('.page,.post').find(selector)
    targetOffset = target[0].getBoundingClientRect().top + window.pageYOffset - 20
    window.setTimeout (->
      window.scroll 0, targetOffset
    ), 100

  onLinkClick = (event) ->
    selector = getAnchorSelector(event.target.hash)
    # Normal link, going to another page
    if event.target.pathname != window.location.pathname or !selector
      true
    # Scrolling to a result on the same page
    hideResults()
    scrollPageToSelector selector
    event.preventDefault()
    false

  'use strict'
  config =
    'applicationId': 'KFSVJ5X7PP'
    'indexName': 'articles'
    'apiKey': 'f9991e202b3921d0cc363451afc76645'
    'baseurl': ''

  applicationId = config.applicationId
  apiKey = config.apiKey
  indexName = config.indexName
  algolia = algoliasearch(applicationId, apiKey)
  helper = algoliasearchHelper(algolia, indexName)
  helper.setQueryParameter 'distinct', true
  helper.on 'result', onResult

  # Input listening for queries
  $searchInput = $('.js-algolia__input, .js-algolia__input_mobile')
  $searchInput.on 'keyup', onQueryChange

  # Content to hide/show when searching
  $initialContent = $('.js-algolia__initial-content')
  $searchContent = $('.js-algolia__search-content')
  $searchContentResults = $searchContent.find('.algolia__results')
  $searchContentResults.on 'click', 'a', onLinkClick

  # # Rendering templates
  templateResult = Hogan.compile($('#algolia__template').html())
  templateNoResults = $('#algolia__template--no-results').html()
  lastQuery = undefined

  window.setTimeout (->
    selector = getAnchorSelector(window.location.hash)
    if selector
      scrollPageToSelector selector
  ), 100

  #Responsive Header
  $(document).ready ->
    $('.nav-menu-toggle').on 'click', ->
      textcont = $('.nav-menu-toggle').text()
      if textcont == 'Menu'
        $('#menu-marketing-navbar-right').slideDown()
        $('.nav-menu-toggle a').text 'Close'
      else if textcont == 'Close'
        $('#menu-marketing-navbar-right').slideUp()
        $('.nav-menu-toggle a').text 'Menu'
        $('#menu-marketing-navbar-right').addClass 'slid'
      return
    return
  $(window).resize ->
    if $('.nav-menu-toggle a').text() == 'Menu'
      $('#menu-marketing-navbar-right').removeAttr 'style'
    return
