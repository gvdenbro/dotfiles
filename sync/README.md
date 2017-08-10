https://blog.andrewkeech.com/posts/170809_path.html

```bash
sudo cp sync-foobar.sh ~/.local/bin 
sudo chmod +x ~/.local/bin/sync-foobar.sh
sudo cp sync-foobar.path /etc/systemd/system/multi-user.target.wants/
sudo cp sync-foobar.service /etc/systemd/system/multi-user.target.wants/
sudo systemctl enable sync-foobar.path
sudo systemctl start sync-foobar.path
```