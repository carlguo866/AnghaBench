; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_send_err_upstream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_send_err_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Error - state: %d, errno: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trf7970a*, i32)* @trf7970a_send_err_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trf7970a_send_err_upstream(%struct.trf7970a* %0, i32 %1) #0 {
  %3 = alloca %struct.trf7970a*, align 8
  %4 = alloca i32, align 4
  store %struct.trf7970a* %0, %struct.trf7970a** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %6 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %9 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %14 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %13, i32 0, i32 1
  %15 = call i32 @cancel_delayed_work(i32* %14)
  %16 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %17 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree_skb(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ERR_PTR(i32 %20)
  %22 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %23 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.trf7970a*, %struct.trf7970a** %3, align 8
  %25 = call i32 @trf7970a_send_upstream(%struct.trf7970a* %24)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @trf7970a_send_upstream(%struct.trf7970a*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
