; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_static.c_STATIC_SetEnhMetaFile.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_static.c_STATIC_SetEnhMetaFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS_TYPEMASK = common dso_local global i32 0, align 4
@SS_ENHMETAFILE = common dso_local global i32 0, align 4
@OBJ_ENHMETAFILE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"hEnhMetaFile != 0, but it's not an enhanced metafile\0A\00", align 1
@HICON_GWL_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32)* @STATIC_SetEnhMetaFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STATIC_SetEnhMetaFile(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SS_TYPEMASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @SS_ENHMETAFILE, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %31

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @GetObjectType(i64 %18)
  %20 = load i64, i64* @OBJ_ENHMETAFILE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @WARN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %31

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @HICON_GWL_OFFSET, align 4
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @SetWindowLongPtrW(i32 %25, i32 %26, i32 %28)
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %24, %22, %13
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local i64 @GetObjectType(i64) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
