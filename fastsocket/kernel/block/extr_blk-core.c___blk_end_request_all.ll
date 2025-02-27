; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c___blk_end_request_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c___blk_end_request_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__blk_end_request_all(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = call i32 @blk_bidi_rq(%struct.request* %7)
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load %struct.request*, %struct.request** %13, align 8
  %15 = call i32 @blk_rq_bytes(%struct.request* %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.request*, %struct.request** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.request*, %struct.request** %3, align 8
  %20 = call i32 @blk_rq_bytes(%struct.request* %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @__blk_end_bidi_request(%struct.request* %17, i32 %18, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @BUG_ON(i32 %23)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_bidi_rq(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @__blk_end_bidi_request(%struct.request*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
