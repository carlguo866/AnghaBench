; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_close_xprt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_close_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32 }

@XPT_CLOSE = common dso_local global i32 0, align 4
@XPT_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_close_xprt(%struct.svc_xprt* %0) #0 {
  %2 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %2, align 8
  %3 = load i32, i32* @XPT_CLOSE, align 4
  %4 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %5 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %4, i32 0, i32 0
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = load i32, i32* @XPT_BUSY, align 4
  %8 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %9 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %8, i32 0, i32 0
  %10 = call i64 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %15 = call i32 @svc_delete_xprt(%struct.svc_xprt* %14)
  br label %16

16:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @svc_delete_xprt(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
