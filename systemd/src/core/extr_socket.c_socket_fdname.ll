; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_fdname.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_socket.c_socket_fdname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @socket_fdname(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = call i32 @assert(%struct.TYPE_6__* %3)
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = inttoptr i64 %7 to i8*
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call %struct.TYPE_7__* @UNIT(%struct.TYPE_6__* %12)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i8* [ %10, %9 ], [ %15, %11 ]
  ret i8* %17
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_7__* @UNIT(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
