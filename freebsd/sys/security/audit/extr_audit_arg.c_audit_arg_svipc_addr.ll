; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_svipc_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_arg.c_audit_arg_svipc_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaudit_record = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@ARG_SVIPC_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_arg_svipc_addr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kaudit_record*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call %struct.kaudit_record* (...) @currecord()
  store %struct.kaudit_record* %4, %struct.kaudit_record** %3, align 8
  %5 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %6 = icmp eq %struct.kaudit_record* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %16

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %11 = getelementptr inbounds %struct.kaudit_record, %struct.kaudit_record* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8* %9, i8** %12, align 8
  %13 = load %struct.kaudit_record*, %struct.kaudit_record** %3, align 8
  %14 = load i32, i32* @ARG_SVIPC_ADDR, align 4
  %15 = call i32 @ARG_SET_VALID(%struct.kaudit_record* %13, i32 %14)
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

declare dso_local %struct.kaudit_record* @currecord(...) #1

declare dso_local i32 @ARG_SET_VALID(%struct.kaudit_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
