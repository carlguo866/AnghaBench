; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mb862xx/extr_mb862xxfb.c_mb862xx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/mb862xx/extr_mb862xxfb.c_mb862xx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb862xxfb_par = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@BT_CARMINE = common dso_local global i64 0, align 8
@ctrl = common dso_local global i32 0, align 4
@GC_CTRL_STATUS = common dso_local global i32 0, align 4
@GC_CTRL_INT_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@host = common dso_local global i32 0, align 4
@GC_IST = common dso_local global i32 0, align 4
@GC_IMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mb862xx_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mb862xxfb_par*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mb862xxfb_par*
  store %struct.mb862xxfb_par* %10, %struct.mb862xxfb_par** %6, align 8
  %11 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %6, align 8
  %12 = icmp ne %struct.mb862xxfb_par* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %6, align 8
  %17 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BT_CARMINE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load i32, i32* @ctrl, align 4
  %23 = load i32, i32* @GC_CTRL_STATUS, align 4
  %24 = call i64 @inreg(i32 %22, i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* @ctrl, align 4
  %26 = load i32, i32* @GC_CTRL_INT_MASK, align 4
  %27 = call i64 @inreg(i32 %25, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %21
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %32
  %41 = load i32, i32* @ctrl, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @outreg(i32 %41, i32 0, i64 %42)
  br label %64

44:                                               ; preds = %15
  %45 = load i32, i32* @host, align 4
  %46 = load i32, i32* @GC_IST, align 4
  %47 = call i64 @inreg(i32 %45, i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load i32, i32* @host, align 4
  %49 = load i32, i32* @GC_IMASK, align 4
  %50 = call i64 @inreg(i32 %48, i32 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = and i64 %52, %51
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %66

58:                                               ; preds = %44
  %59 = load i32, i32* @host, align 4
  %60 = load i32, i32* @GC_IST, align 4
  %61 = load i64, i64* %7, align 8
  %62 = xor i64 %61, -1
  %63 = call i32 @outreg(i32 %59, i32 %60, i64 %62)
  br label %64

64:                                               ; preds = %58, %40
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %56, %38, %30, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @inreg(i32, i32) #1

declare dso_local i32 @outreg(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
