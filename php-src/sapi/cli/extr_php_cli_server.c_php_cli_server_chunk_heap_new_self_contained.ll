; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_chunk_heap_new_self_contained.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_chunk_heap_new_self_contained.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i64, %struct.TYPE_8__* }

@PHP_CLI_SERVER_CHUNK_HEAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i64)* @php_cli_server_chunk_heap_new_self_contained to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @php_cli_server_chunk_heap_new_self_contained(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = add i64 40, %4
  %6 = trunc i64 %5 to i32
  %7 = call %struct.TYPE_8__* @pemalloc(i32 %6, i32 1)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  %8 = load i32, i32* @PHP_CLI_SERVER_CHUNK_HEAP, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 1
  %20 = bitcast %struct.TYPE_8__* %19 to i8*
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i8* %20, i8** %24, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i64 %25, i64* %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %30
}

declare dso_local %struct.TYPE_8__* @pemalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
