; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_image_list_add_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_imagelist.c_image_list_add_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@BMP_CX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to add image to imagelist.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @image_list_add_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_list_add_bitmap(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @BMP_CX, align 4
  %14 = load i32, i32* @BMP_CX, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @RGB(i32 %15, i32 %16, i32 %17)
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %20 = call i32 @create_bitmap(i32 %13, i32 %14, i32 %18, i8* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pImageList_Add(i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, -1
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @DeleteObject(i32 %28)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @create_bitmap(i32, i32, i32, i8*) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @pImageList_Add(i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @DeleteObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
