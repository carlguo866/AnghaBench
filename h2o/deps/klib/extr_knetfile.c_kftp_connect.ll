; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_kftp_connect.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_knetfile.c_kftp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"USER anonymous\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"PASS kftp@\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"TYPE I\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kftp_connect(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @socket_connect(i32 %6, i32 %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 @kftp_get_response(%struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i32 @kftp_send_cmd(%struct.TYPE_5__* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 @kftp_send_cmd(%struct.TYPE_5__* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = call i32 @kftp_send_cmd(%struct.TYPE_5__* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @socket_connect(i32, i32) #1

declare dso_local i32 @kftp_get_response(%struct.TYPE_5__*) #1

declare dso_local i32 @kftp_send_cmd(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
