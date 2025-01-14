; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_mpages_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_mpages_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { %struct.mpage*, %struct.mpage*, %struct.mpage*, %struct.mpage*, %struct.mpage*, %struct.mlink* }
%struct.mlink = type { %struct.mlink* }

@mpage_head = common dso_local global %struct.mpage* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mpages_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpages_free() #0 {
  %1 = alloca %struct.mpage*, align 8
  %2 = alloca %struct.mlink*, align 8
  br label %3

3:                                                ; preds = %20, %0
  %4 = load %struct.mpage*, %struct.mpage** @mpage_head, align 8
  store %struct.mpage* %4, %struct.mpage** %1, align 8
  %5 = icmp ne %struct.mpage* %4, null
  br i1 %5, label %6, label %42

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %12, %6
  %8 = load %struct.mpage*, %struct.mpage** %1, align 8
  %9 = getelementptr inbounds %struct.mpage, %struct.mpage* %8, i32 0, i32 5
  %10 = load %struct.mlink*, %struct.mlink** %9, align 8
  store %struct.mlink* %10, %struct.mlink** %2, align 8
  %11 = icmp ne %struct.mlink* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load %struct.mlink*, %struct.mlink** %2, align 8
  %14 = getelementptr inbounds %struct.mlink, %struct.mlink* %13, i32 0, i32 0
  %15 = load %struct.mlink*, %struct.mlink** %14, align 8
  %16 = load %struct.mpage*, %struct.mpage** %1, align 8
  %17 = getelementptr inbounds %struct.mpage, %struct.mpage* %16, i32 0, i32 5
  store %struct.mlink* %15, %struct.mlink** %17, align 8
  %18 = load %struct.mlink*, %struct.mlink** %2, align 8
  %19 = call i32 @mlink_free(%struct.mlink* %18)
  br label %7

20:                                               ; preds = %7
  %21 = load %struct.mpage*, %struct.mpage** %1, align 8
  %22 = getelementptr inbounds %struct.mpage, %struct.mpage* %21, i32 0, i32 4
  %23 = load %struct.mpage*, %struct.mpage** %22, align 8
  store %struct.mpage* %23, %struct.mpage** @mpage_head, align 8
  %24 = load %struct.mpage*, %struct.mpage** %1, align 8
  %25 = getelementptr inbounds %struct.mpage, %struct.mpage* %24, i32 0, i32 3
  %26 = load %struct.mpage*, %struct.mpage** %25, align 8
  %27 = call i32 @free(%struct.mpage* %26)
  %28 = load %struct.mpage*, %struct.mpage** %1, align 8
  %29 = getelementptr inbounds %struct.mpage, %struct.mpage* %28, i32 0, i32 2
  %30 = load %struct.mpage*, %struct.mpage** %29, align 8
  %31 = call i32 @free(%struct.mpage* %30)
  %32 = load %struct.mpage*, %struct.mpage** %1, align 8
  %33 = getelementptr inbounds %struct.mpage, %struct.mpage* %32, i32 0, i32 1
  %34 = load %struct.mpage*, %struct.mpage** %33, align 8
  %35 = call i32 @free(%struct.mpage* %34)
  %36 = load %struct.mpage*, %struct.mpage** %1, align 8
  %37 = getelementptr inbounds %struct.mpage, %struct.mpage* %36, i32 0, i32 0
  %38 = load %struct.mpage*, %struct.mpage** %37, align 8
  %39 = call i32 @free(%struct.mpage* %38)
  %40 = load %struct.mpage*, %struct.mpage** %1, align 8
  %41 = call i32 @free(%struct.mpage* %40)
  br label %3

42:                                               ; preds = %3
  ret void
}

declare dso_local i32 @mlink_free(%struct.mlink*) #1

declare dso_local i32 @free(%struct.mpage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
