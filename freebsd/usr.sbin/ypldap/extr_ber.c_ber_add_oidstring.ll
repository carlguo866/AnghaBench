; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_oidstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ber.c_ber_add_oidstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i32 }
%struct.ber_oid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ber_element* @ber_add_oidstring(%struct.ber_element* %0, i8* %1) #0 {
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ber_oid, align 4
  store %struct.ber_element* %0, %struct.ber_element** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @ber_string2oid(i8* %7, %struct.ber_oid* %6)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %13 = call %struct.ber_element* @ber_add_oid(%struct.ber_element* %12, %struct.ber_oid* %6)
  store %struct.ber_element* %13, %struct.ber_element** %3, align 8
  br label %14

14:                                               ; preds = %11, %10
  %15 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  ret %struct.ber_element* %15
}

declare dso_local i32 @ber_string2oid(i8*, %struct.ber_oid*) #1

declare dso_local %struct.ber_element* @ber_add_oid(%struct.ber_element*, %struct.ber_oid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
