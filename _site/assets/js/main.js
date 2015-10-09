(function() {
  $(function() {
    var $initialContent, $searchContent, $searchContentResults, $searchInput, algolia, apiKey, applicationId, clearIncidents, config, getAnchorSelector, helper, hideResults, indexName, lastQuery, onLinkClick, onQueryChange, onResult, renderResults, scrollPageToSelector, setStatus, showResults, sp, templateNoResults, templateResult, updateIncidents, updateStatusPageBlock;
    hljs.initHighlightingOnLoad();
    clearIncidents = function() {
      return $('#sp-incidents').innerHTML = '';
    };
    updateIncidents = function(incidents) {
      var i, incident, len, li, results;
      if ($(incidents).length) {
        results = [];
        for (i = 0, len = incidents.length; i < len; i++) {
          incident = incidents[i];
          li = $('<li class="' + incident.status + '"></li>').html('<strong>' + incident.status + '</strong> ' + incident.name + '. <a target="_blank" href="' + incident.shortlink + '">View details</a>');
          results.push($('#sp-incidents').append(li));
        }
        return results;
      } else {
        return clearIncidents();
      }
    };
    setStatus = function(status) {
      var p;
      p = $('<p></p>').addClass(status.indicator).text(status.description);
      return $('#sp-status').append(p);
    };
    updateStatusPageBlock = function() {
      sp.incidents({
        filter: 'unresolved',
        success: function(data) {
          return updateIncidents(data.incidents);
        }
      });
      return sp.status({
        success: function(data) {
          return setStatus(data.status);
        }
      });
    };
    sp = new StatusPage.page({
      page: 't4s7kx6qh253'
    });
    updateStatusPageBlock();
    showResults = function() {
      window.scroll(0, 0);
      $initialContent.addClass('algolia__initial-content--hidden');
      $searchContent.addClass('algolia__search-content--active');
    };
    hideResults = function() {
      $initialContent.removeClass('algolia__initial-content--hidden');
      $searchContent.removeClass('algolia__search-content--active');
    };
    onQueryChange = function() {
      var lastQuery;
      lastQuery = $searchInput.val();
      if (lastQuery.length === 0) {
        hideResults();
        return false;
      }
      helper.setQuery(lastQuery).search();
      return showResults();
    };
    onResult = function(data) {
      var content;
      if (data.query !== lastQuery) {
        false;
      }
      console.log(data.nbHits);
      content = data.nbHits ? renderResults(data) : templateNoResults;
      return $searchContentResults.html(content);
    };
    renderResults = function(data) {
      console.log(data);
      return $.map(data.hits, function(hit) {
        hit.css_selector = encodeURI(hit.css_selector);
        hit.full_url = config.baseurl + hit.url;
        return templateResult.render(hit);
      }).join('');
    };
    getAnchorSelector = function(hash) {
      var anchor;
      anchor = hash.substring(1);
      if (!anchor.match(/^algolia:/)) {
        false;
      }
      return decodeURI(anchor.replace(/^algolia:/, ''));
    };
    scrollPageToSelector = function(selector) {
      var target, targetOffset;
      target = $('.page,.post').find(selector);
      targetOffset = target[0].getBoundingClientRect().top + window.pageYOffset - 20;
      return window.setTimeout((function() {
        return window.scroll(0, targetOffset);
      }), 100);
    };
    onLinkClick = function(event) {
      var selector;
      selector = getAnchorSelector(event.target.hash);
      if (event.target.pathname !== window.location.pathname || !selector) {
        true;
      }
      hideResults();
      scrollPageToSelector(selector);
      event.preventDefault();
      return false;
    };
    'use strict';
    config = {
      'applicationId': 'KFSVJ5X7PP',
      'indexName': 'articles',
      'apiKey': 'f9991e202b3921d0cc363451afc76645',
      'baseurl': ''
    };
    applicationId = config.applicationId;
    apiKey = config.apiKey;
    indexName = config.indexName;
    algolia = algoliasearch(applicationId, apiKey);
    helper = algoliasearchHelper(algolia, indexName);
    helper.setQueryParameter('distinct', true);
    helper.on('result', onResult);
    $searchInput = $('.js-algolia__input');
    $searchInput.on('keyup', onQueryChange);
    $searchInput.on('search', onQueryChange);
    $initialContent = $('.js-algolia__initial-content');
    $searchContent = $('.js-algolia__search-content');
    $searchContentResults = $searchContent.find('.algolia__results');
    $searchContentResults.on('click', 'a', onLinkClick);
    templateResult = Hogan.compile($('#algolia__template').html());
    templateNoResults = $('#algolia__template--no-results').html();
    lastQuery = void 0;
    return window.setTimeout((function() {
      var selector;
      selector = getAnchorSelector(window.location.hash);
      if (selector) {
        return scrollPageToSelector(selector);
      }
    }), 100);
  });

}).call(this);
