; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_flags_show.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-debugfs.c_blk_flags_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i64, i8**, i32)* @blk_flags_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_flags_show(%struct.seq_file* %0, i64 %1, i8** %2, i32 %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %55, %4
  %12 = load i32, i32* %10, align 4
  %13 = sext i32 %12 to i64
  %14 = load i32, i32* @BITS_PER_BYTE, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %11
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @BIT(i32 %20)
  %22 = and i64 %19, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %55

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %30 = call i32 @seq_puts(%struct.seq_file* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  store i32 1, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i8**, i8*** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %44 = load i8**, i8*** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @seq_puts(%struct.seq_file* %43, i8* %48)
  br label %54

50:                                               ; preds = %35, %31
  %51 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %42
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %11

58:                                               ; preds = %11
  ret i32 0
}

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
