; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_tlist_remove.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_tlist_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.forth_request = type { i64, %struct.forth_request*, %struct.forth_request* }

@.str = private unnamed_addr constant [19 x i8] c"tlist_remove (%p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlist_remove(%struct.forth_request* %0, %struct.forth_request* %1) #0 {
  %3 = alloca %struct.forth_request*, align 8
  %4 = alloca %struct.forth_request*, align 8
  %5 = alloca %struct.forth_request*, align 8
  %6 = alloca %struct.forth_request*, align 8
  store %struct.forth_request* %0, %struct.forth_request** %3, align 8
  store %struct.forth_request* %1, %struct.forth_request** %4, align 8
  %7 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %8 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.forth_request* %7)
  %9 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %10 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %9, i32 0, i32 2
  %11 = load %struct.forth_request*, %struct.forth_request** %10, align 8
  store %struct.forth_request* %11, %struct.forth_request** %5, align 8
  %12 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %13 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %12, i32 0, i32 1
  %14 = load %struct.forth_request*, %struct.forth_request** %13, align 8
  store %struct.forth_request* %14, %struct.forth_request** %6, align 8
  %15 = load %struct.forth_request*, %struct.forth_request** %5, align 8
  %16 = icmp eq %struct.forth_request* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %19 = icmp eq %struct.forth_request* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %51

21:                                               ; preds = %17, %2
  %22 = load %struct.forth_request*, %struct.forth_request** %5, align 8
  %23 = icmp ne %struct.forth_request* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %26 = icmp ne %struct.forth_request* %25, null
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %32 = load %struct.forth_request*, %struct.forth_request** %5, align 8
  %33 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %32, i32 0, i32 1
  store %struct.forth_request* %31, %struct.forth_request** %33, align 8
  %34 = load %struct.forth_request*, %struct.forth_request** %5, align 8
  %35 = load %struct.forth_request*, %struct.forth_request** %6, align 8
  %36 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %35, i32 0, i32 2
  store %struct.forth_request* %34, %struct.forth_request** %36, align 8
  %37 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %38 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %37, i32 0, i32 1
  store %struct.forth_request* null, %struct.forth_request** %38, align 8
  %39 = load %struct.forth_request*, %struct.forth_request** %4, align 8
  %40 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %39, i32 0, i32 2
  store %struct.forth_request* null, %struct.forth_request** %40, align 8
  %41 = load %struct.forth_request*, %struct.forth_request** %3, align 8
  %42 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.forth_request*, %struct.forth_request** %3, align 8
  %46 = getelementptr inbounds %struct.forth_request, %struct.forth_request* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  br label %51

51:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.forth_request*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
