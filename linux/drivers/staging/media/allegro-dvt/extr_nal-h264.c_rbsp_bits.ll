; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_rbsp_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_nal-h264.c_rbsp_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbsp = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 (%struct.rbsp*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbsp*, i32, i32*)* @rbsp_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbsp_bits(%struct.rbsp* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.rbsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.rbsp* %0, %struct.rbsp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %8 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %24

12:                                               ; preds = %3
  %13 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %14 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (%struct.rbsp*, i32, i32*)*, i64 (%struct.rbsp*, i32, i32*)** %16, align 8
  %18 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 %17(%struct.rbsp* %18, i32 %19, i32* %20)
  %22 = load %struct.rbsp*, %struct.rbsp** %4, align 8
  %23 = getelementptr inbounds %struct.rbsp, %struct.rbsp* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %12, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
