# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Maximilian Martinez and Aiden Smith

## Summary

In this lab we implemented a single D-latch as well as a memory system the included 4 pieces of 8-bit (1-byte) memory that can be selected and set with an enable button. It was interesting to use some behavioral Verilog to make the D-latch and then implement it in our memory system. It was also helpful to learn how to use loops and genvar in our code to make it more concise. It was useful to learn the syntax difference between vectors and arrays in Verilog because it reduced the number of variables we needed to have.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?

Structural Verilog can not "wait" for an event to happen before it runs, unlike behavioral Verilog, which uses "always @(*)" statements to react to an input change. The behavioral Verilog allows for storage of values (memory) that is needed for latches.

### What is the meaning of always @(*) in a sensitivity block?

The "always @(*)" means that block of code is executed whenever any of the input signals in that module change.

### What importance is memory to digital circuits?

Memory is important in digital circuits because it allows them to store information so it can use it at a different point later. It allows for sequential operations to be formed.