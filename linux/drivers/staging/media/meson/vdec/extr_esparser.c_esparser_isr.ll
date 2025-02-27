; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/meson/vdec/extr_esparser.c_esparser_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amvdec_core = type { i32 }

@PARSER_INT_STATUS = common dso_local global i32 0, align 4
@PARSER_INTSTAT_SC_FOUND = common dso_local global i32 0, align 4
@PFIFO_RD_PTR = common dso_local global i32 0, align 4
@PFIFO_WR_PTR = common dso_local global i32 0, align 4
@search_done = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @esparser_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esparser_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amvdec_core*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.amvdec_core*
  store %struct.amvdec_core* %8, %struct.amvdec_core** %6, align 8
  %9 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %10 = load i32, i32* @PARSER_INT_STATUS, align 4
  %11 = call i32 @amvdec_read_parser(%struct.amvdec_core* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %13 = load i32, i32* @PARSER_INT_STATUS, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @amvdec_write_parser(%struct.amvdec_core* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PARSER_INTSTAT_SC_FOUND, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %22 = load i32, i32* @PFIFO_RD_PTR, align 4
  %23 = call i32 @amvdec_write_parser(%struct.amvdec_core* %21, i32 %22, i32 0)
  %24 = load %struct.amvdec_core*, %struct.amvdec_core** %6, align 8
  %25 = load i32, i32* @PFIFO_WR_PTR, align 4
  %26 = call i32 @amvdec_write_parser(%struct.amvdec_core* %24, i32 %25, i32 0)
  store i32 1, i32* @search_done, align 4
  %27 = call i32 @wake_up_interruptible(i32* @wq)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %29
}

declare dso_local i32 @amvdec_read_parser(%struct.amvdec_core*, i32) #1

declare dso_local i32 @amvdec_write_parser(%struct.amvdec_core*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
