; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_setbridge_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifbridge.c_setbridge_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afswtch = type { i32 }
%struct.ifbreq = type { i32 }

@BRDGDEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"BRDGDEL %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setbridge_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbridge_delete(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.ifbreq, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %10 = call i32 @memset(%struct.ifbreq* %9, i32 0, i32 4)
  %11 = getelementptr inbounds %struct.ifbreq, %struct.ifbreq* %9, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @strlcpy(i32 %12, i8* %13, i32 4)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @BRDGDEL, align 4
  %17 = call i64 @do_cmd(i32 %15, i32 %16, %struct.ifbreq* %9, i32 4, i32 1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %4
  ret void
}

declare dso_local i32 @memset(%struct.ifbreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @do_cmd(i32, i32, %struct.ifbreq*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
