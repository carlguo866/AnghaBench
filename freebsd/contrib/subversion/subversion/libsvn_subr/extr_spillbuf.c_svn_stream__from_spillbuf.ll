; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_svn_stream__from_spillbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_spillbuf.c_svn_stream__from_spillbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spillbuf_baton = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@read_handler_spillbuf = common dso_local global i32 0, align 4
@write_handler_spillbuf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_stream__from_spillbuf(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.spillbuf_baton*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call %struct.spillbuf_baton* @apr_palloc(i32* %7, i32 16)
  store %struct.spillbuf_baton* %8, %struct.spillbuf_baton** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_2__* @apr_pcalloc(i32* %9, i32 8)
  %11 = load %struct.spillbuf_baton*, %struct.spillbuf_baton** %6, align 8
  %12 = getelementptr inbounds %struct.spillbuf_baton, %struct.spillbuf_baton* %11, i32 0, i32 1
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %12, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.spillbuf_baton*, %struct.spillbuf_baton** %6, align 8
  %15 = getelementptr inbounds %struct.spillbuf_baton, %struct.spillbuf_baton* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* %13, i32** %17, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @svn_pool_create(i32* %18)
  %20 = load %struct.spillbuf_baton*, %struct.spillbuf_baton** %6, align 8
  %21 = getelementptr inbounds %struct.spillbuf_baton, %struct.spillbuf_baton* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.spillbuf_baton*, %struct.spillbuf_baton** %6, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @svn_stream_create(%struct.spillbuf_baton* %22, i32* %23)
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @read_handler_spillbuf, align 4
  %27 = call i32 @svn_stream_set_read2(i32* %25, i32* null, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @write_handler_spillbuf, align 4
  %30 = call i32 @svn_stream_set_write(i32* %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  ret i32* %31
}

declare dso_local %struct.spillbuf_baton* @apr_palloc(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_pool_create(i32*) #1

declare dso_local i32* @svn_stream_create(%struct.spillbuf_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32*, i32) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
