; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_la_show_t6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_cim_la_show_t6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [88 x i8] c"Status   Inst    Data      PC     LS0Stat  LS0Addr  LS0Data  LS1Stat  LS1Addr  LS1Data\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"  %02x   %04x%04x %04x%04x %04x%04x %08x %08x %08x %08x %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*, i32)* @cim_la_show_t6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cim_la_show_t6(%struct.seq_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  br label %66

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %7, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 9
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 9
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 65535
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 8
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 16
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 65535
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 7
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %37, 16
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 65535
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 16
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %26, i32 %30, i32 %34, i32 %38, i32 %42, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %14, %11
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
