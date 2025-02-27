; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_chipram.c_amiga_chip_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/amiga/extr_chipram.c_amiga_chip_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@chipram_res = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"amiga_chip_free: trying to free nonexistent region at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"amiga_chip_free: free %lu bytes at %p\0A\00", align 1
@chipavail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amiga_chip_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @ZTWO_PADDR(i8* %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.resource* @lookup_resource(i32* @chipram_res, i64 %8)
  store %struct.resource* %9, %struct.resource** %4, align 8
  %10 = load %struct.resource*, %struct.resource** %4, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %27

15:                                               ; preds = %1
  %16 = load %struct.resource*, %struct.resource** %4, align 8
  %17 = call i64 @resource_size(%struct.resource* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %18, i8* %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @atomic_add(i64 %21, i32* @chipavail)
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = call i32 @release_resource(%struct.resource* %23)
  %25 = load %struct.resource*, %struct.resource** %4, align 8
  %26 = call i32 @kfree(%struct.resource* %25)
  br label %27

27:                                               ; preds = %15, %12
  ret void
}

declare dso_local i64 @ZTWO_PADDR(i8*) #1

declare dso_local %struct.resource* @lookup_resource(i32*, i64) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @pr_debug(i8*, i64, i8*) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
