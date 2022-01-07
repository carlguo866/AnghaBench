
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
typedef size_t uint32_t ;



uint64_t quicly_determine_packet_number(uint32_t truncated, size_t num_bits, uint64_t expected)
{
    uint64_t win = (uint64_t)1 << num_bits, candidate = (expected & ~(win - 1)) | truncated;

    if (candidate + win / 2 <= expected)
        return candidate + win;
    if (candidate > expected + win / 2 && candidate > win)
        return candidate - win;
    return candidate;
}
