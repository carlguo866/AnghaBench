; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mcr20a.c_mcr20a_iar_readable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mcr20a.c_mcr20a_iar_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @mcr20a_iar_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcr20a_iar_readable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @mcr20a_iar_writeable(%struct.device* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %17 [
    i32 130, label %16
    i32 133, label %16
    i32 128, label %16
    i32 132, label %16
    i32 131, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %14, %14, %14, %14, %14, %14
  store i32 1, i32* %3, align 4
  br label %18

17:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %16, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @mcr20a_iar_writeable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
