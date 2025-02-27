; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Writer_GetCodepointEscapeCharacter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/json/extr_jsonsax_full.c_JSON_Writer_GetCodepointEscapeCharacter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FIRST_NON_CONTROL_CODEPOINT = common dso_local global i32 0, align 4
@WRITER_ESCAPE_NON_ASCII = common dso_local global i32 0, align 4
@FIRST_NON_ASCII_CODEPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @JSON_Writer_GetCodepointEscapeCharacter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSON_Writer_GetCodepointEscapeCharacter(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %15 [
    i32 135, label %7
    i32 128, label %8
    i32 131, label %9
    i32 132, label %10
    i32 134, label %11
    i32 34, label %12
    i32 92, label %13
    i32 133, label %14
    i32 130, label %14
    i32 129, label %14
  ]

7:                                                ; preds = %2
  store i32 98, i32* %3, align 4
  br label %37

8:                                                ; preds = %2
  store i32 116, i32* %3, align 4
  br label %37

9:                                                ; preds = %2
  store i32 110, i32* %3, align 4
  br label %37

10:                                               ; preds = %2
  store i32 102, i32* %3, align 4
  br label %37

11:                                               ; preds = %2
  store i32 114, i32* %3, align 4
  br label %37

12:                                               ; preds = %2
  store i32 34, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  store i32 92, i32* %3, align 4
  br label %37

14:                                               ; preds = %2, %2, %2
  store i32 117, i32* %3, align 4
  br label %37

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FIRST_NON_CONTROL_CODEPOINT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @IS_NONCHARACTER(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WRITER_ESCAPE_NON_ASCII, align 4
  %28 = call i32 @GET_FLAGS(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @FIRST_NON_ASCII_CODEPOINT, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %19, %15
  store i32 117, i32* %3, align 4
  br label %37

35:                                               ; preds = %30, %23
  br label %36

36:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %34, %14, %13, %12, %11, %10, %9, %8, %7
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @IS_NONCHARACTER(i32) #1

declare dso_local i32 @GET_FLAGS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
