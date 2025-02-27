; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_dtor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_pipe.c_audit_pipe_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_pipe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @audit_pipe_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_pipe_dtor(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.audit_pipe*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.audit_pipe*
  store %struct.audit_pipe* %5, %struct.audit_pipe** %3, align 8
  %6 = load %struct.audit_pipe*, %struct.audit_pipe** %3, align 8
  %7 = getelementptr inbounds %struct.audit_pipe, %struct.audit_pipe* %6, i32 0, i32 0
  %8 = call i32 @funsetown(i32* %7)
  %9 = call i32 (...) @AUDIT_PIPE_LIST_WLOCK()
  %10 = load %struct.audit_pipe*, %struct.audit_pipe** %3, align 8
  %11 = call i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe* %10)
  %12 = load %struct.audit_pipe*, %struct.audit_pipe** %3, align 8
  %13 = call i32 @audit_pipe_free(%struct.audit_pipe* %12)
  %14 = call i32 (...) @AUDIT_PIPE_LIST_WUNLOCK()
  ret void
}

declare dso_local i32 @funsetown(i32*) #1

declare dso_local i32 @AUDIT_PIPE_LIST_WLOCK(...) #1

declare dso_local i32 @AUDIT_PIPE_LOCK(%struct.audit_pipe*) #1

declare dso_local i32 @audit_pipe_free(%struct.audit_pipe*) #1

declare dso_local i32 @AUDIT_PIPE_LIST_WUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
