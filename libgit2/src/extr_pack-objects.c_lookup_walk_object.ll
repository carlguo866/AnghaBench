; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_lookup_walk_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_lookup_walk_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walk_object = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walk_object**, %struct.TYPE_3__*, i32*)* @lookup_walk_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_walk_object(%struct.walk_object** %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.walk_object**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.walk_object*, align 8
  store %struct.walk_object** %0, %struct.walk_object*** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call %struct.walk_object* @git_pool_mallocz(i32* %10, i32 1)
  store %struct.walk_object* %11, %struct.walk_object** %8, align 8
  %12 = load %struct.walk_object*, %struct.walk_object** %8, align 8
  %13 = icmp ne %struct.walk_object* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = call i32 (...) @git_error_set_oom()
  store i32 -1, i32* %4, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.walk_object*, %struct.walk_object** %8, align 8
  %18 = getelementptr inbounds %struct.walk_object, %struct.walk_object* %17, i32 0, i32 0
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @git_oid_cpy(i32* %18, i32* %19)
  %21 = load %struct.walk_object*, %struct.walk_object** %8, align 8
  %22 = load %struct.walk_object**, %struct.walk_object*** %5, align 8
  store %struct.walk_object* %21, %struct.walk_object** %22, align 8
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %16, %14
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local %struct.walk_object* @git_pool_mallocz(i32*, i32) #1

declare dso_local i32 @git_error_set_oom(...) #1

declare dso_local i32 @git_oid_cpy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
