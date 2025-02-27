; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_read_remote_version_information.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_link_control.c_hci_read_remote_version_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@USAGE = common dso_local global i32 0, align 4
@NG_HCI_OGF_LINK_CONTROL = common dso_local global i32 0, align 4
@NG_HCI_OCF_READ_REMOTE_VER_INFO = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@FAILED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NG_HCI_EVENT_READ_REMOTE_VER_INFO_COMPL = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Status: %s [%#02x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Connection handle: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"LMP version: %s [%#02x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"LMP sub-version: %#04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Manufacturer: %s [%#04x]\0A\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @hci_read_remote_version_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_read_remote_version_information(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %11, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %38 [
    i32 1, label %16
  ]

16:                                               ; preds = %3
  %17 = load i8**, i8*** %7, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %8)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 3839
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %22, %16
  %29 = load i32, i32* @USAGE, align 4
  store i32 %29, i32* %4, align 4
  br label %143

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 4095
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @htole16(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  br label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @USAGE, align 4
  store i32 %39, i32* %4, align 4
  br label %143

40:                                               ; preds = %30
  store i32 512, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NG_HCI_OGF_LINK_CONTROL, align 4
  %43 = load i32, i32* @NG_HCI_OCF_READ_REMOTE_VER_INFO, align 4
  %44 = call i32 @NG_HCI_OPCODE(i32 %42, i32 %43)
  %45 = bitcast %struct.TYPE_4__* %10 to i8*
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %47 = call i64 @hci_request(i32 %41, i32 %44, i8* %45, i32 4, i8* %46, i32* %8)
  %48 = load i64, i64* @ERROR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i64, i64* @ERROR, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %143

53:                                               ; preds = %40
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %55 = load i8, i8* %54, align 16
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @FAILED, align 4
  store i32 %59, i32* %4, align 4
  br label %143

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %140, %60
  store i32 512, i32* %8, align 4
  %62 = load i32, i32* %5, align 4
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %64 = call i64 @hci_recv(i32 %62, i8* %63, i32* %8)
  %65 = load i64, i64* @ERROR, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i64, i64* @ERROR, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  br label %143

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %72, 8
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @EIO, align 4
  store i32 %75, i32* @errno, align 4
  %76 = load i64, i64* @ERROR, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %143

78:                                               ; preds = %70
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NG_HCI_EVENT_READ_REMOTE_VER_INFO_COMPL, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %140

84:                                               ; preds = %78
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 1
  %87 = bitcast %struct.TYPE_6__* %86 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %12, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = load i32, i32* @stdout, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @hci_status2str(i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %100)
  %102 = load i32, i32* @FAILED, align 4
  store i32 %102, i32* %4, align 4
  br label %143

103:                                              ; preds = %84
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le16toh(i32 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @stdout, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16toh(i32 %113)
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @stdout, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @hci_lmpver2str(i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %120, i32 %123)
  %125 = load i32, i32* @stdout, align 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le16toh(i32 %128)
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @stdout, align 4
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @hci_manufacturer2str(i32 %134)
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %135, i32 %138)
  br label %141

140:                                              ; preds = %78
  br label %61

141:                                              ; preds = %103
  %142 = load i32, i32* @OK, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %92, %74, %67, %58, %50, %38, %28
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i64 @hci_request(i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #1

declare dso_local i64 @hci_recv(i32, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @hci_status2str(i32) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i8* @hci_lmpver2str(i32) #1

declare dso_local i8* @hci_manufacturer2str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
