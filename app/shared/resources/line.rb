class Line < Jets::Stack
  # sqs_queue(:fastpass)
  sqs_queue_with_lambda_trigger(:move,
    lambda: {
      function_name: :wait
    }
  )
  function(:wait)
end
