; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_stats.c_rds_stats_info_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_stats.c_rds_stats_info_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_info_iterator = type { i32 }
%struct.rds_info_counter = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_stats_info_copy(%struct.rds_info_iterator* %0, i32* %1, i8** %2, i64 %3) #0 {
  %5 = alloca %struct.rds_info_iterator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rds_info_counter, align 8
  %10 = alloca i64, align 8
  store %struct.rds_info_iterator* %0, %struct.rds_info_iterator** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %42, %4
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i8**, i8*** %7, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = icmp uge i64 %21, 8
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = getelementptr inbounds %struct.rds_info_counter, %struct.rds_info_counter* %9, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strncpy(i8* %26, i8* %30, i32 7)
  %32 = getelementptr inbounds %struct.rds_info_counter, %struct.rds_info_counter* %9, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 7
  store i8 0, i8* %34, align 1
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.rds_info_counter, %struct.rds_info_counter* %9, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %5, align 8
  %41 = call i32 @rds_info_copy(%struct.rds_info_iterator* %40, %struct.rds_info_counter* %9, i32 16)
  br label %42

42:                                               ; preds = %15
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %11

45:                                               ; preds = %11
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @rds_info_copy(%struct.rds_info_iterator*, %struct.rds_info_counter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
