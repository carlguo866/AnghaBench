; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_subseq_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_name_table.c_tipc_subseq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_seq = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sub_seq* (i32)* @tipc_subseq_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sub_seq* @tipc_subseq_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sub_seq*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.sub_seq* @kcalloc(i32 %4, i32 4, i32 %5)
  store %struct.sub_seq* %6, %struct.sub_seq** %3, align 8
  %7 = load %struct.sub_seq*, %struct.sub_seq** %3, align 8
  ret %struct.sub_seq* %7
}

declare dso_local %struct.sub_seq* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
