; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Tree.c_Tree_Description.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Tree.c_Tree_Description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [560 x i8] c"The `Tree` type is a self balancing binary tree implemented as a red-black tree. It provides key-value access and requires the `Cmp` class to be defined on the key type.\0A\0AElement lookup and insertion are provided as an `O(log(n))` operation. This means in general a `Tree` is slower than a `Table` but it has several other nice properties such as being able to iterate over the items in order and not having large pauses for rehashing on some insertions.\0A\0AThis is largely equivalent to the C++ construct [std::map](http://www.cplusplus.com/reference/map/map/)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @Tree_Description to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Tree_Description() #0 {
  ret i8* getelementptr inbounds ([560 x i8], [560 x i8]* @.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
