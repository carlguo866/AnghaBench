; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_unioxx5.c___unioxx5_analog_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_unioxx5.c___unioxx5_analog_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unioxx5_subd_priv = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unioxx5_subd_priv*, i32)* @__unioxx5_analog_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__unioxx5_analog_config(%struct.unioxx5_subd_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.unioxx5_subd_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.unioxx5_subd_priv* %0, %struct.unioxx5_subd_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @__unioxx5_define_chan_offset(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.unioxx5_subd_priv*, %struct.unioxx5_subd_priv** %3, align 8
  %12 = getelementptr inbounds %struct.unioxx5_subd_priv, %struct.unioxx5_subd_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = srem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 7
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  %29 = and i32 %28, 7
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %42

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %34, 7
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 7
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %32, %22
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.unioxx5_subd_priv*, %struct.unioxx5_subd_priv** %3, align 8
  %51 = getelementptr inbounds %struct.unioxx5_subd_priv, %struct.unioxx5_subd_priv* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 0
  %54 = call i32 @outb(i32 1, i64 %53)
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.unioxx5_subd_priv*, %struct.unioxx5_subd_priv** %3, align 8
  %57 = getelementptr inbounds %struct.unioxx5_subd_priv, %struct.unioxx5_subd_priv* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i32 @outb(i32 %55, i64 %61)
  %63 = load %struct.unioxx5_subd_priv*, %struct.unioxx5_subd_priv** %3, align 8
  %64 = getelementptr inbounds %struct.unioxx5_subd_priv, %struct.unioxx5_subd_priv* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 0
  %67 = call i32 @outb(i32 0, i64 %66)
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.unioxx5_subd_priv*, %struct.unioxx5_subd_priv** %3, align 8
  %70 = getelementptr inbounds %struct.unioxx5_subd_priv, %struct.unioxx5_subd_priv* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %68, i32* %75, align 4
  ret void
}

declare dso_local i32 @__unioxx5_define_chan_offset(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
