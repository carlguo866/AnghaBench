; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_dnd_select_format.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_dnd_select_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_x11_state = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"DnD type: '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Selected DnD type: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo_x11_state*, i64*, i32)* @dnd_select_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnd_select_format(%struct.vo_x11_state* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.vo_x11_state*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vo_x11_state* %0, %struct.vo_x11_state** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %9 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %44, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %16 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @x11_atom_name(%struct.vo_x11_state* %16, i64 %21)
  %23 = call i32 @MP_VERBOSE(%struct.vo_x11_state* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %25 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %26 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @dnd_format_is_better(%struct.vo_x11_state* %24, i64 %27, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %14
  %36 = load i64*, i64** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %42 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %14
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %49 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %50 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %55 = load %struct.vo_x11_state*, %struct.vo_x11_state** %4, align 8
  %56 = getelementptr inbounds %struct.vo_x11_state, %struct.vo_x11_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @x11_atom_name(%struct.vo_x11_state* %54, i64 %57)
  br label %60

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %53
  %61 = phi i8* [ %58, %53 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %59 ]
  %62 = call i32 @MP_VERBOSE(%struct.vo_x11_state* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.vo_x11_state*, i8*, i8*) #1

declare dso_local i8* @x11_atom_name(%struct.vo_x11_state*, i64) #1

declare dso_local i64 @dnd_format_is_better(%struct.vo_x11_state*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
