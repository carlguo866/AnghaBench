; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_fnv1a_wrap_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_fnv1a_wrap_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@svn_checksum_fnv1a_32x4 = common dso_local global i32 0, align 4
@fnv1a_write_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*)* @fnv1a_wrap_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fnv1a_wrap_stream(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.TYPE_4__* @apr_pcalloc(i32* %9, i32 16)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  %14 = load i32, i32* @svn_checksum_fnv1a_32x4, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @svn_checksum_ctx_create(i32 %14, i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32**, i32*** %4, align 8
  store i32* %21, i32** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @svn_stream_create(%struct.TYPE_4__* %23, i32* %24)
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* @fnv1a_write_handler, align 4
  %28 = call i32 @svn_stream_set_write(i32* %26, i32 %27)
  %29 = load i32*, i32** %7, align 8
  ret i32* %29
}

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @svn_checksum_ctx_create(i32, i32*) #1

declare dso_local i32* @svn_stream_create(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
