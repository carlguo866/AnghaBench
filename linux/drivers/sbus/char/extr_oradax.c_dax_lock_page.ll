; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_lock_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_lock_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type opaque

@.str = private unnamed_addr constant [7 x i8] c"uva %p\00", align 1
@FOLL_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"locked page %p, for VA %p\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"get_user_pages failed, va=%p, ret=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.page**)* @dax_lock_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_lock_page(i8* %0, %struct.page** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.page** %1, %struct.page*** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 (i8*, i8*, ...) @dax_dbg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i32, i32* @FOLL_WRITE, align 4
  %12 = load %struct.page**, %struct.page*** %5, align 8
  %13 = bitcast %struct.page** %12 to i8**
  %14 = call i32 @get_user_pages_fast(i64 %10, i32 1, i32 %11, i8** %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.page**, %struct.page*** %5, align 8
  %19 = load %struct.page*, %struct.page** %18, align 8
  %20 = bitcast %struct.page* %19 to i8*
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, i8*, ...) @dax_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %21)
  store i32 0, i32* %3, align 4
  br label %27

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i8*, i8*, ...) @dax_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %24, i32 %25)
  store i32 -1, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @dax_dbg(i8*, i8*, ...) #1

declare dso_local i32 @get_user_pages_fast(i64, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
