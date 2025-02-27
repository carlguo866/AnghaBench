; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_lock_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_asyncdata.c_lock_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inbuf_t = type { i8*, i32, i32 }

@DEBUG_LOCKCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"received response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inbuf_t*)* @lock_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_loop(i32 %0, %struct.inbuf_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inbuf_t*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.inbuf_t* %1, %struct.inbuf_t** %4, align 8
  %6 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %7 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %10 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %8, i64 %12
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* @DEBUG_LOCKCMD, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @gigaset_dbg_buffer(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i8* %16)
  %18 = load %struct.inbuf_t*, %struct.inbuf_t** %4, align 8
  %19 = getelementptr inbounds %struct.inbuf_t, %struct.inbuf_t* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @gigaset_if_receive(i32 %20, i8* %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @gigaset_dbg_buffer(i32, i8*, i32, i8*) #1

declare dso_local i32 @gigaset_if_receive(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
