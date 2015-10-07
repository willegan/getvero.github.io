---
---

$ ->
  hljs.initHighlightingOnLoad()
  # Toggle result page

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

  onQueryChange = ->
    lastQuery = $searchInput.val()
    if lastQuery.length == 0
      hideResults()
      return false
    helper.setQuery(lastQuery).search()
    showResults()

  onResult = (data) ->
    # Avoid race conditions, discard results that do not match the latest query
    if (data.query != lastQuery)
      false
    console.log data.nbHits
    content = if data.nbHits then renderResults(data) else templateNoResults
    $searchContentResults.html content

  renderResults = (data) ->
    console.log data
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
    'baseurl': '/help'

  applicationId = config.applicationId
  apiKey = config.apiKey
  indexName = config.indexName
  algolia = algoliasearch(applicationId, apiKey)
  helper = algoliasearchHelper(algolia, indexName)
  helper.setQueryParameter 'distinct', true
  helper.on 'result', onResult

  # Input listening for queries
  $searchInput = $('.js-algolia__input')
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