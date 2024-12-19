# nanoPerplexityAI wrapper

This is functionally a fork of [nanoPerplexityAI](https://github.com/Yusuke710/nanoPerplexityAI). I've containerized the tool to circumvent requirements installation on an arch system. I would rather compartmentalize it into a container rather than actively collect python requirements. I would recommend managing the Open AI API key as a secret, and reading it into an alias. This allows for spinning up the container in one command, and querying. For now, generated responses will have to be grabbed from the console directly, versus the generated .md being saved directly.

## Architecture notes (from nanoPerplexityAI)

1. Get the user query
2. LLM checks the user query, decides whether to execute a Google search, and if searching, reformulates the user query into a Google-suited query to find relevant webpage URLs and fetch texts. (In practice, [PerplexityAI searches its already indexed sources](https://www.perplexity.ai/hub/faq/how-does-perplexity-work))
3. Build a prompt using `system prompt + webpage context + user query`
4. Call the LLM API to generate an answer
5. As LLM perform stream completion, save the LLM response into a markdown file for better visualization. 

#PerplexityAI does not reformat the search results and therefore not all search results are used and cited in the LLM response. This is because they prioritize displaying search results quickly and streaming LLM completion for a better user experience.
