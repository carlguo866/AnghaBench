; ModuleID = '/home/carl/AnghaBench/libuv/docs/code/dns/extr_main.c_on_connect.c'
source_filename = "/home/carl/AnghaBench/libuv/docs/code/dns/extr_main.c_on_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"connect failed error %s\0A\00", align 1
@alloc_buffer = common dso_local global i32 0, align 4
@on_read = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_connect(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @uv_err_name(i32 %9)
  %11 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = call i32 @free(%struct.TYPE_4__* %12)
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load i32, i32* @alloc_buffer, align 4
  %20 = load i32, i32* @on_read, align 4
  %21 = call i32 @uv_read_start(i32* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = call i32 @free(%struct.TYPE_4__* %22)
  br label %24

24:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @uv_err_name(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @uv_read_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
