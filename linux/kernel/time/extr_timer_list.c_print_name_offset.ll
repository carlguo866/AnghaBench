; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timer_list.c_print_name_offset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timer_list.c_print_name_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@KSYM_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"<%pK>\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @print_name_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_name_offset(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @KSYM_NAME_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %5, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = ptrtoint i8* %11 to i64
  %13 = call i64 @lookup_symbol_name(i64 %12, i8* %10)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @SEQ_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = call i32 @SEQ_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %23)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lookup_symbol_name(i64, i8*) #2

declare dso_local i32 @SEQ_printf(%struct.seq_file*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
