; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-rtrack2.c_rt_getsigstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-rtrack2.c_rt_getsigstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtrack2 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtrack2*)* @rt_getsigstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_getsigstr(%struct.rtrack2* %0) #0 {
  %2 = alloca %struct.rtrack2*, align 8
  %3 = alloca i32, align 4
  store %struct.rtrack2* %0, %struct.rtrack2** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.rtrack2*, %struct.rtrack2** %2, align 8
  %5 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.rtrack2*, %struct.rtrack2** %2, align 8
  %8 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @inb(i32 %9)
  %11 = and i32 %10, 2
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load %struct.rtrack2*, %struct.rtrack2** %2, align 8
  %16 = getelementptr inbounds %struct.rtrack2, %struct.rtrack2* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
