export const fetchStocks = (query) => (
  $.ajax({
    url: 'api/stocks',
    method: 'GET',
    data: { query },
  })
);

export const fetchStock = (symbol) => (
  $.ajax({
    url: `api/stocks/${symbol}`,
    method: 'GET',
  })
);

export const fetchPeerStocks = (peer) => (
  $.ajax({
    url: 'api/stocks',
    method: 'GET',
    data: { peer },
  })
);