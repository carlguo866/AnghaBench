; ModuleID = '/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_send_binding_event.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_ipc.c_ipc_send_binding_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Issue IPC binding %s event (sym = %s, code = %d)\0A\00", align 1
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@map_open = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"change\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"binding\00", align 1
@map_close = common dso_local global i32 0, align 4
@get_buf = common dso_local global i32 0, align 4
@I3_IPC_EVENT_BINDING = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_send_binding_event(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DLOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %11, i32 %14)
  %16 = load i32, i32* @LC_NUMERIC, align 4
  %17 = call i32 @setlocale(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 (...) @ygenalloc()
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @map_open, align 4
  %20 = call i32 (i32, ...) @y(i32 %19)
  %21 = call i32 @ystr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @ystr(i8* %22)
  %24 = call i32 @ystr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = call i32 @dump_binding(i32 %25, %struct.TYPE_4__* %26)
  %28 = load i32, i32* @map_close, align 4
  %29 = call i32 (i32, ...) @y(i32 %28)
  %30 = load i32, i32* @get_buf, align 4
  %31 = call i32 (i32, ...) @y(i32 %30, i8** %6, i32* %7)
  %32 = load i32, i32* @I3_IPC_EVENT_BINDING, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @ipc_send_event(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %32, i8* %33)
  %35 = load i32, i32* @free, align 4
  %36 = call i32 (i32, ...) @y(i32 %35)
  %37 = load i32, i32* @LC_NUMERIC, align 4
  %38 = call i32 @setlocale(i32 %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DLOG(i8*, i8*, i32, i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @ygenalloc(...) #1

declare dso_local i32 @y(i32, ...) #1

declare dso_local i32 @ystr(i8*) #1

declare dso_local i32 @dump_binding(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ipc_send_event(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
