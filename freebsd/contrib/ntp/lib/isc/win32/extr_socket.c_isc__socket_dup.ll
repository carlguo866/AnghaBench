; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_isc__socket_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_socket.c_isc__socket_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }

@ISC_R_NOTIMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc__socket_dup(%struct.TYPE_7__* %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i32 @VALID_SOCKET(%struct.TYPE_7__* %5)
  %7 = call i32 @REQUIRE(i32 %6)
  %8 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %9 = icmp ne %struct.TYPE_7__** %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load i32, i32* @ISC_R_NOTIMPLEMENTED, align 4
  ret i32 %18
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_SOCKET(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
