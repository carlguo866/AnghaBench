; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_request = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s done\0A\00", align 1
@tape_op_verbose = common dso_local global i32* null, align 8
@TAPE_IO_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_request*)* @tape_34xx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_34xx_done(%struct.tape_request* %0) #0 {
  %2 = alloca %struct.tape_request*, align 8
  store %struct.tape_request* %0, %struct.tape_request** %2, align 8
  %3 = load i32*, i32** @tape_op_verbose, align 8
  %4 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %5 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds i32, i32* %3, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @DBF_EVENT(i32 6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %11 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  switch i64 %12, label %18 [
    i64 132, label %13
    i64 131, label %13
    i64 129, label %13
    i64 128, label %13
    i64 133, label %13
    i64 130, label %13
  ]

13:                                               ; preds = %1, %1, %1, %1, %1, %1
  %14 = load %struct.tape_request*, %struct.tape_request** %2, align 8
  %15 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @tape_34xx_delete_sbid_from(i32 %16, i32 0)
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* @TAPE_IO_SUCCESS, align 4
  ret i32 %20
}

declare dso_local i32 @DBF_EVENT(i32, i8*, i32) #1

declare dso_local i32 @tape_34xx_delete_sbid_from(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
