; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_repository.c_ps3_repository_read_stor_dev_region_size.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/ps3/extr_repository.c_ps3_repository_read_stor_dev_region_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS3_LPAR_ID_PME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps3_repository_read_stor_dev_region_size(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* @PS3_LPAR_ID_PME, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @make_first_field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @make_field(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @make_field(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = call i32 @make_field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @read_node(i32 %9, i32 %11, i32 %13, i32 %15, i32 %16, i32* %17, i32* null)
  ret i32 %18
}

declare dso_local i32 @read_node(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @make_first_field(i8*, i32) #1

declare dso_local i32 @make_field(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
