; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_get_iflist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_get_iflist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_if = type { i32 }
%struct.ifbreq = type { i32 }
%struct.ifbifconf = type { i32, %struct.ifbreq* }
%struct.ifdrv = type { i32, %struct.ifbifconf*, i32, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@BRDGGIFS = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"get bridge member list: realloc failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@sock = common dso_local global i32 0, align 4
@SIOCGDRVSPEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"get bridge member list: ioctl (BRDGGIFS) failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bridge_if*, %struct.ifbreq**)* @bridge_port_get_iflist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bridge_port_get_iflist(%struct.bridge_if* %0, %struct.ifbreq** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bridge_if*, align 8
  %5 = alloca %struct.ifbreq**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifbreq*, align 8
  %9 = alloca %struct.ifbifconf, align 8
  %10 = alloca %struct.ifdrv, align 8
  store %struct.bridge_if* %0, %struct.bridge_if** %4, align 8
  store %struct.ifbreq** %1, %struct.ifbreq*** %5, align 8
  store i32 128, i32* %6, align 4
  %11 = load %struct.ifbreq**, %struct.ifbreq*** %5, align 8
  store %struct.ifbreq* null, %struct.ifbreq** %11, align 8
  %12 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %10, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.bridge_if*, %struct.bridge_if** %4, align 8
  %15 = getelementptr inbounds %struct.bridge_if, %struct.bridge_if* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFNAMSIZ, align 4
  %18 = call i32 @strlcpy(i32 %13, i32 %16, i32 %17)
  %19 = load i32, i32* @BRDGGIFS, align 4
  %20 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %10, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %10, i32 0, i32 0
  store i32 16, i32* %21, align 8
  %22 = getelementptr inbounds %struct.ifdrv, %struct.ifdrv* %10, i32 0, i32 1
  store %struct.ifbifconf* %9, %struct.ifbifconf** %22, align 8
  br label %23

23:                                               ; preds = %70, %2
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ifbreq**, %struct.ifbreq*** %5, align 8
  %29 = load %struct.ifbreq*, %struct.ifbreq** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @realloc(%struct.ifbreq* %29, i32 %30)
  %32 = inttoptr i64 %31 to %struct.ifbreq*
  store %struct.ifbreq* %32, %struct.ifbreq** %8, align 8
  %33 = icmp eq %struct.ifbreq* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load i32, i32* @LOG_ERR, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @syslog(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.ifbreq**, %struct.ifbreq*** %5, align 8
  %40 = load %struct.ifbreq*, %struct.ifbreq** %39, align 8
  %41 = call i32 @free(%struct.ifbreq* %40)
  %42 = load %struct.ifbreq**, %struct.ifbreq*** %5, align 8
  store %struct.ifbreq* null, %struct.ifbreq** %42, align 8
  store i32 -1, i32* %3, align 4
  br label %76

43:                                               ; preds = %23
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds %struct.ifbifconf, %struct.ifbifconf* %9, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  %46 = load %struct.ifbreq*, %struct.ifbreq** %8, align 8
  %47 = load %struct.ifbreq**, %struct.ifbreq*** %5, align 8
  store %struct.ifbreq* %46, %struct.ifbreq** %47, align 8
  %48 = getelementptr inbounds %struct.ifbifconf, %struct.ifbifconf* %9, i32 0, i32 1
  store %struct.ifbreq* %46, %struct.ifbreq** %48, align 8
  %49 = load i32, i32* @sock, align 4
  %50 = load i32, i32* @SIOCGDRVSPEC, align 4
  %51 = call i64 @ioctl(i32 %49, i32 %50, %struct.ifdrv* %10)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load i32, i32* @LOG_ERR, align 4
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 @syslog(i32 %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.ifbreq**, %struct.ifbreq*** %5, align 8
  %59 = load %struct.ifbreq*, %struct.ifbreq** %58, align 8
  %60 = call i32 @free(%struct.ifbreq* %59)
  store %struct.ifbreq** null, %struct.ifbreq*** %5, align 8
  store i32 -1, i32* %3, align 4
  br label %76

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.ifbifconf, %struct.ifbifconf* %9, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add i64 %64, 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %73

70:                                               ; preds = %61
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 64
  store i32 %72, i32* %6, align 4
  br label %23

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.ifbifconf, %struct.ifbifconf* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %53, %34
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @realloc(%struct.ifbreq*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(%struct.ifbreq*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifdrv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
