; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_audit_cb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_audit_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c" ns=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i8*)* @audit_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_cb(%struct.audit_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.common_audit_data*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.common_audit_data*
  store %struct.common_audit_data* %7, %struct.common_audit_data** %5, align 8
  %8 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %9 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %16 = call i32 @audit_log_format(%struct.audit_buffer* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %18 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %19 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %17, i64 %22)
  br label %24

24:                                               ; preds = %14, %2
  ret void
}

declare dso_local %struct.TYPE_4__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
