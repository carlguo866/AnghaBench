; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvkern.c_gxv_kern_subtable_fmt1_entry_validate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/gxvalid/extr_gxvkern.c_gxv_kern_subtable_fmt1_entry_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@FT_INVALID_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, %struct.TYPE_7__*)* @gxv_kern_subtable_fmt1_entry_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxv_kern_subtable_fmt1_entry_validate(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_7__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @FT_UNUSED(i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @FT_UNUSED(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 16383
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %14, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* @FT_INVALID_OFFSET, align 4
  br label %35

35:                                               ; preds = %33, %6
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  store i32 %47, i32* %11, align 4
  %48 = call i32 @GXV_LIMIT_CHECK(i32 4)
  ret void
}

declare dso_local i32 @FT_UNUSED(i32) #1

declare dso_local i32 @GXV_LIMIT_CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
