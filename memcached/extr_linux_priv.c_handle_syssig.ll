; ModuleID = '/home/carl/AnghaBench/memcached/extr_linux_priv.c_handle_syssig.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_linux_priv.c_handle_syssig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@kill_msg = common dso_local global i32* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, i8*)* @handle_syssig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_syssig(i32 %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = sdiv i32 %12, 100
  %14 = srem i32 %13, 10
  %15 = add nsw i32 %14, 48
  %16 = load i32*, i32** @kill_msg, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 39
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 10
  %20 = srem i32 %19, 10
  %21 = add nsw i32 %20, 48
  %22 = load i32*, i32** @kill_msg, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 40
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = srem i32 %24, 10
  %26 = add nsw i32 %25, 48
  %27 = load i32*, i32** @kill_msg, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 41
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** @kill_msg, align 8
  %30 = load i32*, i32** @kill_msg, align 8
  %31 = call i32 @strlen(i32* %30)
  %32 = call i32 @write(i32 2, i32* %29, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* @EXIT_FAILURE, align 4
  %37 = call i32 @_exit(i32 %36) #3
  unreachable
}

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
