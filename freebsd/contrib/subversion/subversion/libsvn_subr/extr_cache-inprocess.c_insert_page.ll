; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_insert_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache-inprocess.c_insert_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.cache_page* }
%struct.cache_page = type { %struct.cache_page*, %struct.cache_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.cache_page*)* @insert_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_page(%struct.TYPE_3__* %0, %struct.cache_page* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.cache_page*, align 8
  %5 = alloca %struct.cache_page*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.cache_page* %1, %struct.cache_page** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.cache_page*, %struct.cache_page** %7, align 8
  store %struct.cache_page* %8, %struct.cache_page** %5, align 8
  %9 = load %struct.cache_page*, %struct.cache_page** %5, align 8
  %10 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %11 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %10, i32 0, i32 0
  store %struct.cache_page* %9, %struct.cache_page** %11, align 8
  %12 = load %struct.cache_page*, %struct.cache_page** %5, align 8
  %13 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %12, i32 0, i32 1
  %14 = load %struct.cache_page*, %struct.cache_page** %13, align 8
  %15 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %16 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %15, i32 0, i32 1
  store %struct.cache_page* %14, %struct.cache_page** %16, align 8
  %17 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %18 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %19 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %18, i32 0, i32 0
  %20 = load %struct.cache_page*, %struct.cache_page** %19, align 8
  %21 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %20, i32 0, i32 1
  store %struct.cache_page* %17, %struct.cache_page** %21, align 8
  %22 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %23 = load %struct.cache_page*, %struct.cache_page** %4, align 8
  %24 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %23, i32 0, i32 1
  %25 = load %struct.cache_page*, %struct.cache_page** %24, align 8
  %26 = getelementptr inbounds %struct.cache_page, %struct.cache_page* %25, i32 0, i32 0
  store %struct.cache_page* %22, %struct.cache_page** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
