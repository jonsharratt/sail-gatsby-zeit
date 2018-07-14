<pipeline>
  <environment>
    <variable
      secret
      name="ZEIT_TOKEN"
      value="CiQAKvOODPt/33WjOfT9dn7ZuakgzcOQfMnG1TcQByGzD2mpnD8SQQDeH+l8dkVwM5Q87T3f2I7oZwELvAqei2gAOf4WvtLgchBkiucYjY+iOHOgQih9TE/L/XbuKxSxEs4RL2G6EldV"
    />
  </environment>
  <job image="node:9.2.1-alpine">
    <Run command="yarn" />
    <Run command="yarn build" />
    <Branch when="^master$">
      <ZeitNow
        public
        paths="./public"
        token="$ZEIT_TOKEN"
        alias="sailci-demo"
      />
    </Branch>
  </job>
</pipeline>
