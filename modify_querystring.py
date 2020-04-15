from mitmproxy import http


def request(flow: http.HTTPFlow) -> None:
    flow.request.query.pop("reasoning", None)
    flow.request.query.pop("schema", None)

