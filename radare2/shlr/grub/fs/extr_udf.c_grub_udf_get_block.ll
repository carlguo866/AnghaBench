; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_get_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_udf.c_grub_udf_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_udf_data = type { i64, %struct.TYPE_6__**, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid part ref\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_udf_data*, i64, i64)* @grub_udf_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_udf_get_block(%struct.grub_udf_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.grub_udf_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.grub_udf_data* %0, %struct.grub_udf_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i64 @U16(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.grub_udf_data*, %struct.grub_udf_data** %5, align 8
  %12 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %17 = call i32 @grub_error(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.grub_udf_data*, %struct.grub_udf_data** %5, align 8
  %20 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.grub_udf_data*, %struct.grub_udf_data** %5, align 8
  %23 = getelementptr inbounds %struct.grub_udf_data, %struct.grub_udf_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %24, i64 %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @U32(i64 %33)
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @U32(i64 %35)
  %37 = add nsw i64 %34, %36
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %18, %15
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i64 @U16(i64) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i64 @U32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
