; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_id.c_svn_fs_x__id_create_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_id.c_svn_fs_x__id_create_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@owner_cleanup = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@fs_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @svn_fs_x__id_create_context(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call %struct.TYPE_7__* @apr_pcalloc(i32* %6, i32 16)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %10, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = load i32, i32* @owner_cleanup, align 4
  %23 = load i32, i32* @apr_pool_cleanup_null, align 4
  %24 = call i32 @apr_pool_cleanup_register(i32* %20, %struct.TYPE_7__* %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = load i32, i32* @fs_cleanup, align 4
  %30 = load i32, i32* @apr_pool_cleanup_null, align 4
  %31 = call i32 @apr_pool_cleanup_register(i32* %27, %struct.TYPE_7__* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %33
}

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pool_cleanup_register(i32*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
