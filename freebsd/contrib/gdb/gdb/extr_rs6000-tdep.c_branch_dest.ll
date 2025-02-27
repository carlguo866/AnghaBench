; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_branch_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_branch_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@TEXT_SEGMENT_BASE = common dso_local global i64 0, align 8
@SIG_FRAME_PC_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i64)* @branch_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @branch_dest(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.frame_info*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 1
  %17 = and i32 %16, 1
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %110 [
    i32 18, label %19
    i32 16, label %35
    i32 19, label %51
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, -4
  %22 = shl i32 %21, 6
  %23 = ashr i32 %22, 6
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  br label %34

29:                                               ; preds = %19
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  store i64 %33, i64* %10, align 8
  br label %34

34:                                               ; preds = %29, %26
  br label %111

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, -4
  %38 = shl i32 %37, 16
  %39 = ashr i32 %38, 16
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  br label %50

45:                                               ; preds = %35
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %45, %42
  br label %111

51:                                               ; preds = %4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 1
  %54 = and i32 %53, 1023
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %57, label %84

57:                                               ; preds = %51
  %58 = load i32, i32* @current_gdbarch, align 4
  %59 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @read_register(i32 %61)
  %63 = and i32 %62, -4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @TEXT_SEGMENT_BASE, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %57
  %69 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %69, %struct.frame_info** %14, align 8
  %70 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %71 = icmp ne %struct.frame_info* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.frame_info*, %struct.frame_info** %14, align 8
  %74 = call i64 @get_frame_base(%struct.frame_info* %73)
  %75 = load i64, i64* @SIG_FRAME_PC_OFFSET, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i32, i32* @current_gdbarch, align 4
  %78 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @read_memory_addr(i64 %76, i32 %80)
  store i64 %81, i64* %10, align 8
  br label %82

82:                                               ; preds = %72, %68
  br label %83

83:                                               ; preds = %82, %57
  br label %109

84:                                               ; preds = %51
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 528
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = load i32, i32* @current_gdbarch, align 4
  %89 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @read_register(i32 %91)
  %93 = and i32 %92, -4
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @TEXT_SEGMENT_BASE, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %87
  %99 = load i32, i32* @current_gdbarch, align 4
  %100 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @read_register(i32 %102)
  %104 = and i32 %103, -4
  %105 = sext i32 %104 to i64
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %98, %87
  br label %108

107:                                              ; preds = %84
  store i64 -1, i64* %5, align 8
  br label %121

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108, %83
  br label %111

110:                                              ; preds = %4
  store i64 -1, i64* %5, align 8
  br label %121

111:                                              ; preds = %109, %50, %34
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* @TEXT_SEGMENT_BASE, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i64, i64* %9, align 8
  br label %119

117:                                              ; preds = %111
  %118 = load i64, i64* %10, align 8
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i64 [ %116, %115 ], [ %118, %117 ]
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %119, %110, %107
  %122 = load i64, i64* %5, align 8
  ret i64 %122
}

declare dso_local i32 @read_register(i32) #1

declare dso_local %struct.TYPE_2__* @gdbarch_tdep(i32) #1

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i64 @read_memory_addr(i64, i32) #1

declare dso_local i64 @get_frame_base(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
