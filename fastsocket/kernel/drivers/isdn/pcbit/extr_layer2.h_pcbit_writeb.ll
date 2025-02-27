; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_pcbit_writeb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_pcbit_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { i64, i64 }

@BANKLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcbit_dev*, i8)* @pcbit_writeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcbit_writeb(%struct.pcbit_dev* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.pcbit_dev*, align 8
  %4 = alloca i8, align 1
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %7 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = trunc i64 %8 to i32
  %11 = call i32 @writeb(i8 zeroext %5, i32 %10)
  %12 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BANKLEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = icmp eq i64 %14, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.pcbit_dev*, %struct.pcbit_dev** %3, align 8
  %26 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @writeb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
