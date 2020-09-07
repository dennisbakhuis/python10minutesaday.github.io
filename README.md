# Progress tracker - Python 10 minutes a day
For the Python 10 minutes a day course, I created this online Progress tracker.
The progress tracker gives an overview on you progress and how many lectures
are left. It also contains links to all the Medium posts and includes links to
the Jupyter Notebook versions. While both versions contain the same
information, the layout and experience is better using the Medium articles. The
benefit of the progress tracker is that, as the name reveals, you can track
your progress. When you finish an article, click the checkbox to strike the
finished lecture out. The progress is stored in a local cookie and the next
time you visit the website the current progress is restored. Just make sure
that you keep the cookie, i.e. by turning off the cookie-auto-delete plugin in
your browser for that website. While it is mostly a static website, I still
have used Python to create it (for fun).

A live version is server at: [https://python-10-minutes-a-day.rocks](https://python-10-minutes-a-day.rocks)

![How it looks](/assets/tracker.png)


## Requirements
```bash
pip install flask gunicorn
```

## Run locally
```bash
gunicorn -b :2020 main:app
```

## Docker
To serve the Progress tracker on Docker locally execute the following to have it
served at http://localhost:2020.
### Built the image
```bash
docker build -t progresstracker .
```
### Run the container
```bash
docker run --rm -d -p 2020:2020 progresstracker
```


