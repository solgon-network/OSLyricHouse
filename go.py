import scapy


class BrickSetSpider(scrapy.Spider):
    name = "brickset_spider"
    start_urls = ['https://www.azlyrics.com/']